init:
	vagrant up --provision

up:
	vagrant up

build: clean
	vagrant ssh -c \
		"cd /home/vagrant/doc/zh_TW.UTF-8/books/handbook && \
		rsync -av --exclude='/vagrant/vagrant/' /vagrant/ ./ && \
		make tran && \
		make FORMATS=html"

runserver: up
	echo "打開瀏覽器，連到 http://172.30.1.5:8000 進行預覽。"
	vagrant ssh -c \
		"cd /home/vagrant/doc/zh_TW.UTF-8/books/handbook && \
		ln -sf book.html index.html && \
		python3 -m http.server"

clean: up
	vagrant ssh -c \
		"find /home/vagrant/doc/zh_TW.UTF-8/books/handbook -not -name 'Makefile' -delete"

run: clean build runserver

close:
	vagrant halt

destroy:
	vagrant destroy

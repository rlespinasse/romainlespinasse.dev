.PHONY: server release-notes-as-posts

server:
	@hugo server -D

release-notes-as-posts:
	@./release-notes-as-posts.sh

.PHONY: server release-notes-to-posts

server:
	@hugo server -D

release-notes-to-posts:
	@./release-notes-to-posts.sh

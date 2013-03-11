# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:13 espie Exp $

COMMENT= 	pure perl client interface to memcached

MODULES=	cpan

DISTNAME=	Cache-Memcached-1.24
REVISION=	1
CATEGORIES=	devel
HOMEPAGE=	http://www.danga.com/memcached/

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-String-CRC32

USE_GROFF =		Yes
TEST_DEPENDS=	misc/memcached
TEST_IS_INTERACTIVE=	Yes

start-memcached:
	memcached -u nobody -d -m 2048 -c 16 -l 127.0.0.1 -p 11211

stop-memcached:
	pkill memcached

pre-test:
	@echo "if the regression test fails, you need a memcached daemon"
	@echo "run make start-memcached to start it"
	@echo "don't forget to kill it after the test"
	@echo "running make stop-memcached"

.include <bsd.port.mk>

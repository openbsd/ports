# $OpenBSD: Makefile,v 1.4 2008/10/04 22:59:43 simon Exp $

COMMENT= 	pure perl client interface to memcached

MODULES=	cpan

DISTNAME=	Cache-Memcached-1.24
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel
HOMEPAGE=	http://www.danga.com/memcached/

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-String-CRC32

REGRESS_DEPENDS=	::misc/memcached
REGRESS_IS_INTERACTIVE=	Yes

start-memcached:
	memcached -u nobody -d -m 2048 -c 16 -l 127.0.0.1 -p 11211

stop-memcached:
	pkill memcached

pre-regress:
	@echo "if the regression test fails, you need a memcached daemon"
	@echo "run make start-memcached to start it"
	@echo "don't forget to kill it after the test"
	@echo "running make stop-memcached"

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.9 2014/01/11 22:51:03 jeremy Exp $

COMMENT=		fast Porter stemmer for ruby

DISTNAME=		fast-stemmer-1.0.0
REVISION=		5
CATEGORIES=		textproc

HOMEPAGE=		https://github.com/romanbsd/fast-stemmer

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

MODRUBY_TEST=	rake
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}
do-test:
	cd ${WRKSRC} && RUBYOPT="-I. -rubygems" ${RAKE} test

.include <bsd.port.mk>

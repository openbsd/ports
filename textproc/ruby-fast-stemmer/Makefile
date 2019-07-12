# $OpenBSD: Makefile,v 1.14 2019/07/12 20:50:14 sthen Exp $

COMMENT=		fast Porter stemmer for ruby

DISTNAME=		fast-stemmer-1.0.2
REVISION =		1
CATEGORIES=		textproc

HOMEPAGE=		https://github.com/romanbsd/fast-stemmer

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

MODRUBY_TEST=	rake
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}
do-test:
	cd ${WRKSRC} && RUBYOPT="-I. -rubygems" ${RAKE} test

.include <bsd.port.mk>

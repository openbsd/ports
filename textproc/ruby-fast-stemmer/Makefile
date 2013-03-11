# $OpenBSD: Makefile,v 1.6 2013/03/11 11:42:46 espie Exp $

COMMENT=		fast Porter stemmer for ruby

DISTNAME=		fast-stemmer-1.0.0
REVISION=	2
CATEGORIES=		textproc

HOMEPAGE=		http://github.com/romanbsd/fast-stemmer

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

MODRUBY_TEST=	rake
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}
do-test:
	cd ${WRKSRC} && RUBYOPT="-I. -rubygems" ${RAKE} test

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.1.1.1 2010/12/20 18:15:48 jeremy Exp $

COMMENT=		fast Porter stemmer for ruby

DISTNAME=		fast-stemmer-1.0.0
CATEGORIES=		textproc

HOMEPAGE=		http://github.com/romanbsd/fast-stemmer

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

MODRUBY_REGRESS=	rake
REGRESS_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}
do-regress:
	cd ${WRKSRC} && RUBYOPT=-rubygems ${RAKE} test

.include <bsd.port.mk>

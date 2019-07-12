# $OpenBSD: Makefile,v 1.13 2019/07/12 20:49:38 sthen Exp $

COMMENT=		Perl shell

DISTNAME=		psh-1.8.1
PKGNAME=		${DISTNAME:S/p/perl/}
REVISION=		2
CATEGORIES=		shells

# Perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan

CPAN_AUTHOR=		GREGOR

RUN_DEPENDS=		devel/p5-Term-ReadLine-Gnu \
			devel/p5-Term-ReadLine-Perl \
			devel/p5-BSD-Resource

CONFIGURE_STYLE=	perl

PKG_ARCH=		*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/psh/themes
	${INSTALL_DATA_DIR} ${PREFIX}/share/psh/complete
	${INSTALL_DATA} ${WRKSRC}/share/themes/* ${PREFIX}/share/psh/themes
	${INSTALL_DATA} ${WRKSRC}/share/complete/* ${PREFIX}/share/psh/complete

.include <bsd.port.mk>

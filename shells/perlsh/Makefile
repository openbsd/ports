# $OpenBSD: Makefile,v 1.10 2013/03/11 11:41:29 espie Exp $

COMMENT=		Perl shell

DISTNAME=		psh-1.8.1
PKGNAME=		${DISTNAME:S/p/perl/}
REVISION=		0
CATEGORIES=		shells

HOMEPAGE=		http://www.focusresearch.com/gregor/sw/psh/

# perl
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.focusresearch.com/gregor/download/

RUN_DEPENDS=		devel/p5-Term-ReadLine-Gnu \
			devel/p5-Term-ReadLine-Perl \
			devel/p5-BSD-Resource

CONFIGURE_STYLE=	perl
USE_GROFF =		Yes

PKG_ARCH=		*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/psh/themes
	${INSTALL_DATA_DIR} ${PREFIX}/share/psh/complete
	${INSTALL_DATA} ${WRKSRC}/share/themes/* ${PREFIX}/share/psh/themes
	${INSTALL_DATA} ${WRKSRC}/share/complete/* ${PREFIX}/share/psh/complete

.include <bsd.port.mk>

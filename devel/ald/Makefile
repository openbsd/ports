# $OpenBSD: Makefile,v 1.3 2004/11/23 11:22:00 espie Exp $

ONLY_FOR_ARCHS=		i386

COMMENT=		"Assembly Language Debugger"

DISTNAME=		ald-0.1.5a
CATEGORIES=		devel

HOMEPAGE=		http://dunx1.irt.drexel.edu/~psa22/ald.html

MAINTAINER=		Patrick Alken <pa59@cornell.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c readline termcap

MASTER_SITES=		http://dunx1.irt.drexel.edu/~psa22/source/

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/autoconf \
				${WRKSRC}/libDASM/autoconf \
				${WRKSRC}/libDebug/autoconf

NO_REGRESS=             Yes

.include <bsd.port.mk>

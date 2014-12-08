# $OpenBSD: Makefile,v 1.10 2014/12/08 21:35:32 naddy Exp $

ONLY_FOR_ARCHS=		i386

COMMENT=		assembly language debugger

DISTNAME=		ald-0.1.7
CATEGORIES=		devel

HOMEPAGE=		http://ald.sourceforge.net/

MAINTAINER=		Patrick Alken <alken@colorado.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c readline termcap

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ald/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-gtk
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/autoconf \
				${WRKSRC}/libDASM/autoconf \
				${WRKSRC}/libDebug/autoconf

NO_TEST=             Yes

.include <bsd.port.mk>

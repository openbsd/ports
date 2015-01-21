# $OpenBSD: Makefile,v 1.12 2015/01/21 06:13:49 bentley Exp $

COMMENT=	scan mailboxes for messages matching a regular expression

DISTNAME=	mboxgrep-0.7.8
REVISION =	0
CATEGORIES=	mail

HOMEPAGE=	http://www.mboxgrep.org/

PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		c z pcre

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mboxgrep/}

LIB_DEPENDS=	devel/pcre

WRKSRC=		${WRKDIR}/mboxgrep

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"
USE_GROFF =	Yes

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/mboxgrep ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/mboxgrep.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/doc/mboxgrep.info ${PREFIX}/info 

.include <bsd.port.mk>

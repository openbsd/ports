# $OpenBSD: Makefile,v 1.2 2002/05/13 23:31:25 espie Exp $

COMMENT=	"scan mailboxes for messages matching a regular expression"

DISTNAME=	mboxgrep-0.7.4
CATEGORIES=	mail
NEED_VERSION=	1.500

HOMEPAGE=	http://mboxgrep.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mboxgrep/}

LIB_DEPENDS=	pcre::devel/pcre

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/mboxgrep ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/mboxgrep.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/doc/mboxgrep.info ${PREFIX}/info 

.include <bsd.port.mk>

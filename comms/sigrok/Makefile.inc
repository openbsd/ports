# $OpenBSD: Makefile.inc,v 1.1.1.1 2018/09/19 05:50:36 bentley Exp $

CATEGORIES +=		comms/sigrok

MAINTAINER ?=		Anthony J. Bentley <anthony@anjbe.name>
HOMEPAGE ?=		https://sigrok.org/
MASTER_SITES ?=		https://sigrok.org/download/source/${SIGROK_PROJECT}/
DISTNAME ?=		${SIGROK_PROJECT}-${SIGROK_VERSION}

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE ?=	gnu

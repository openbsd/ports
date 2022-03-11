CATEGORIES +=		comms/sigrok

MAINTAINER ?=		Anthony J. Bentley <anthony@anjbe.name>
HOMEPAGE ?=		https://sigrok.org/
MASTER_SITES ?=		https://sigrok.org/download/source/${SIGROK_PROJECT}/
DISTNAME ?=		${SIGROK_PROJECT}-${SIGROK_VERSION}

# GPLv3+
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE ?=	gnu

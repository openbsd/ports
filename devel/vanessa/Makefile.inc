# $OpenBSD: Makefile.inc,v 1.2 2013/03/11 10:50:31 espie Exp $

CATEGORIES?=	devel

HOMEPAGE?=	http://www.vergenet.net/linux/vanessa/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITE_VANESSA?=	${HOMEPAGE}download/

USE_LIBTOOL?=		Yes

CONFIGURE_STYLE?=	gnu

NO_TEST?=		Yes

CONFIGURE_ENV?=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

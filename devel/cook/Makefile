# New ports collection Makefile for:	cook
# Date created:		31 January 2000
# Whom:			jasone
# OpenBSD port by: Gregory Steuck <greg@nest.cx>
#
# $FreeBSD: ports/devel/cook/Makefile,v 1.5 2000/05/30 23:19:09 jasone Exp $
# $OpenBSD: Makefile,v 1.2 2000/06/27 02:06:12 kevlo Exp $
#

DISTNAME=	cook-2.15
CATEGORIES=	devel
NEED_VERSION=	1.307

MASTER_SITES=	http://www.canb.auug.org.au/~millerp/cook/

MAINTAINER=	greg@nest.cx

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=    intl::devel/gettext

FAKE_FLAGS=	RPM_BUILD_ROOT=${WRKINST}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS= --libdir=${PREFIX}/share/locale

.include <bsd.port.mk>

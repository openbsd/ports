# $OpenBSD: Makefile,v 1.30 2016/03/26 15:58:51 awolk Exp $

COMMENT =	mikmod sound library

DISTNAME =	libmikmod-3.3.8
SHARED_LIBS +=	mikmod               4.0      # .3.0
CATEGORIES =	audio devel

MAINTAINER =	Frederic Cambus <fred@statdns.com>

HOMEPAGE =	http://mikmod.sourceforge.net/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m pthread sndio

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mikmod/}

SEPARATE_BUILD = Yes
CONFIGURE_STYLE = gnu

CONFIGURE_ARGS+= --disable-dl \
		 --disable-oss \
		 --disable-esd

.include <bsd.port.mk>

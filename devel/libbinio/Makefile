# $OpenBSD: Makefile,v 1.2 2017/04/10 11:45:26 sthen Exp $

COMMENT =	binary I/O stream class library

DISTNAME =	libbinio-1.4
SHARED_LIBS +=	binio	0.0	# 1.0
CATEGORIES =	devel

HOMEPAGE =	http://libbinio.sourceforge.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	m ${LIBCXX}

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=libbinio/}

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>

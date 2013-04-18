# $OpenBSD: Makefile,v 1.19 2013/04/18 05:34:35 bentley Exp $

COMMENT=	decode MS-TNEF MIME attachments

DISTNAME=	tnef-1.4.9
CATEGORIES=	mail

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tnef/}

HOMEPAGE=	http://tnef.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODULES=	devel/gettext

.include <bsd.port.mk>

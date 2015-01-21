# $OpenBSD: Makefile,v 1.21 2015/01/21 06:23:33 bentley Exp $

COMMENT=	decode MS-TNEF MIME attachments

DISTNAME=	tnef-1.4.10
CATEGORIES=	mail
REVISION =	0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tnef/}

HOMEPAGE=	http://tnef.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MODULES=	devel/gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

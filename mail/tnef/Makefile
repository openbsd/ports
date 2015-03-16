# $OpenBSD: Makefile,v 1.22 2015/03/16 09:52:22 sthen Exp $

COMMENT=	decode MS-TNEF MIME attachments

DISTNAME=	tnef-1.4.12
CATEGORIES=	mail

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

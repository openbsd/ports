# $OpenBSD: Makefile,v 1.24 2019/05/20 22:15:16 naddy Exp $

COMMENT=	decode MS-TNEF MIME attachments

DISTNAME=	tnef-1.4.12
CATEGORIES=	mail
REVISION=	1

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tnef/}

HOMEPAGE=	http://tnef.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c intl

LIB_DEPENDS=	devel/gettext,-runtime

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

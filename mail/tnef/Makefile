# $OpenBSD: Makefile,v 1.20 2014/06/12 18:56:15 ajacoutot Exp $

COMMENT=	decode MS-TNEF MIME attachments

DISTNAME=	tnef-1.4.10
CATEGORIES=	mail

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tnef/}

HOMEPAGE=	http://tnef.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MODULES=	devel/gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.13 2009/11/22 10:35:44 ajacoutot Exp $

COMMENT=	decode MS-TNEF MIME attachments

DISTNAME=	tnef-1.4.6
CATEGORIES=	mail

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tnef/}

HOMEPAGE=	http://tnef.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		 LDFLAGS="-L${LOCALBASE}/lib"

MODULES=	devel/gettext

.include <bsd.port.mk>

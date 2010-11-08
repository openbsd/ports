# $OpenBSD: Makefile,v 1.10 2010/11/08 22:23:50 robert Exp $

COMMENT=	import and export WordPerfect(tm) documents

DISTNAME=	libwpd-0.8.9
CATEGORIES=	textproc

REVISION=	3

SHARED_LIBS=	wpd-0.8		8.9 \
		wpd-stream-0.8	8.9

HOMEPAGE=	http://libwpd.sourceforge.net/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libwpd/}

WANTLIB += bz2 c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m pcre
WANTLIB += stdc++ xml2 z
WANTLIB += gthread-2.0 pthread

MODULES=		devel/gettext

BUILD_DEPENDS=		::devel/doxygen
LIB_DEPENDS=		gsf-1::devel/libgsf
REGRESS_DEPENDS=	::devel/cppunit

USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu

.include <bsd.port.mk>

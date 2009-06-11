# $OpenBSD: Makefile,v 1.8 2009/06/11 06:11:19 ajacoutot Exp $

COMMENT=	import and export WordPerfect(tm) documents

DISTNAME=	libwpd-0.8.9
PKGNAME=	${DISTNAME}p1
CATEGORIES=	textproc

SHARED_LIBS=	wpd		8.9 \
		wpd-stream	8.9

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

MODULES=		devel/gettext

LIB_DEPENDS=		gsf-1::devel/libgsf
REGRESS_DEPENDS=	::devel/cppunit

USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu

pre-configure:
	@cd ${WRKSRC} && \
		for PCFILE in *.pc.in; do \
			cp $$PCFILE \
			`echo $$PCFILE | sed 's/-0.8//g'`; \
		done

.include <bsd.port.mk>

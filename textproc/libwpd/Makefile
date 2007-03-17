# $OpenBSD: Makefile,v 1.4 2007/03/17 20:41:01 kili Exp $

COMMENT=	"library for importing and exporting WordPerfect(tm) documents"

DISTNAME=	libwpd-0.8.9
PKGNAME=	${DISTNAME}
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

WANTLIB=	c m stdc++ z bz2 glib-2.0 gobject-2.0 iconv intl xml2

LIB_DEPENDS=	gsf-1::devel/libgsf

USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu

pre-configure:
	@cd ${WRKSRC} && \
		for PCFILE in *.pc.in; do \
			cp $$PCFILE \
			`echo $$PCFILE | sed 's/-0.8//g'`; \
		done

.include <bsd.port.mk>

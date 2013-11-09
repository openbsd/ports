# $OpenBSD: Makefile,v 1.23 2013/11/09 23:19:03 naddy Exp $

COMMENT=		Abstract Syntax Notation One structure parser library

DISTNAME=		libtasn1-3.3
REVISION=		0
CATEGORIES=		security

SHARED_LIBS +=  tasn1                3.0      # 7.1

HOMEPAGE=		https://www.gnu.org/software/gnutls/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=libtasn1/}

WANTLIB=		c


CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-gtk-doc

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

.include <bsd.port.mk>

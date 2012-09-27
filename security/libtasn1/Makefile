# $OpenBSD: Makefile,v 1.18 2012/09/27 06:22:50 ajacoutot Exp $

COMMENT=		Abstract Syntax Notation One structure parser library

DISTNAME=		libtasn1-2.14
CATEGORIES=		security

SHARED_LIBS +=  tasn1                2.1      # 5.0

HOMEPAGE=		http://www.gnu.org/software/gnutls/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=libtasn1/}

WANTLIB=		c

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-gtk-doc

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

.include <bsd.port.mk>

# $OpenBSD: Makefile.inc,v 1.17 2014/09/07 18:25:01 jasper Exp $

PORTROACH=	limitw:1,even

SHARED_ONLY?=	Yes

CATEGORIES +=	net

HOMEPAGE_TP=	http://telepathy.freedesktop.org/wiki/

# If there is no real page, or only a CategoryFoo,
# fallback to the default homepage.
.if !defined(HOMEPAGE)
HOMEPAGE=	${HOMEPAGE_TP}
.endif

MASTER_SITES_TP=	http://telepathy.freedesktop.org/releases/
DIST_SUBDIR=		telepathy

# BSD/GPL/LGPL
PERMIT_PACKAGE_CDROM?=	Yes

MAINTAINER?=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

USE_GMAKE?=	Yes

CONFIGURE_STYLE?=gnu

.if defined(CONFIGURE_STYLE) && ${CONFIGURE_STYLE:Mgnu}
    CONFIGURE_ARGS+=--disable-gtk-doc

    # If one of these tools is found at configure stage, it might be used,
    # no matter whether we use --disable-gtk-doc or not.
    CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
                    ac_cv_path_GTKDOC_REBASE="" \
                    ac_cv_path_GTKDOC_MKPDF=""
.endif

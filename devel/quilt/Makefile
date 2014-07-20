# $OpenBSD: Makefile,v 1.6 2014/07/20 20:40:25 landry Exp $

COMMENT=		manage large numbers of patches

DISTNAME=		quilt-0.63
CATEGORIES=		devel

HOMEPAGE=		http://savannah.nongnu.org/projects/quilt/
MAINTAINER=		Kent R. Spillner <kspillner@acm.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=quilt/}

MODULES=		devel/gettext

USE_GMAKE=		Yes

RUN_DEPENDS=		devel/gpatch \
			lang/gawk \
			mail/procmail \
			misc/findutils \
			misc/gnugetopt \
			shells/bash \
			sysutils/coreutils \
			sysutils/ggrep \
			textproc/diffstat \
			textproc/gdiff \
			textproc/gsed

BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.69
CONFIGURE_ARGS=		--with-cp=${LOCALBASE}/bin/gcp \
			--with-date=${LOCALBASE}/bin/gdate \
			--with-diff=${LOCALBASE}/bin/gdiff \
			--with-find=${LOCALBASE}/bin/gfind \
			--with-getopt=${LOCALBASE}/bin/gnugetopt \
			--with-grep=${LOCALBASE}/bin/ggrep \
			--with-md5sum=${LOCALBASE}/bin/gmd5sum \
			--with-patch=${LOCALBASE}/bin/gpatch \
			--with-sed=${LOCALBASE}/bin/gsed \
			--without-patch-wrapper \
			--without-rpmbuild


FAKE_FLAGS=		BUILD_ROOT=${WRKINST} \
			etcdir=${PREFIX}/share/examples/quilt

post-configure:
	${SUBST_CMD} ${WRKSRC}/test/delete.test

.include <bsd.port.mk>

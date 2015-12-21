# $OpenBSD: Makefile,v 1.16 2015/12/21 18:57:53 jasper Exp $

COMMENT=	LaTeX plugin for Gedit

GNOME_PROJECT=	gedit-latex
GNOME_VERSION=	3.8.0
REVISION=	3

CATEGORIES=	editors print

### XXX: Backports from upstream git, remove when updating
MASTER_SITES0=		https://git.gnome.org/browse/gedit-latex/patch/?id=
PATCH_DIST_STRIP=	-p1
DIST_SUBDIR=		gedit-latex
COMMITS=		c4e3a6596c68c5746b7f4af8a2bdfbb3f2741d9c \
			019725bea02151a833835a9aba8c82a55cea57f8 \
			c3a70ee7f0a304c74eac8c30f3b7cea4691b7b6f \
			7d4a482091db72bdda9e70e70d6802f8e3dda6f8 \
			8e9970be499fe2345bdf1408bb84ff0428a07078 \
			cbf93251c8ebeeb88b4e9dc9acd225a4f75001c5 \
			c41f600944a3fa4d10d71928c54880979c869ed4 \
			24a8bcfe7e8665047f78fd2f00514a00ea270409
.for p in ${COMMITS}
PATCHFILES +=		${p}:0
.endfor
########

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome \
		lang/python \
		devel/dconf

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=	devel/gettext \
		x11/gnome/gedit

RUN_DEPENDS=	devel/py-gobject3${MODPY_FLAVOR} \
		devel/gettext \
		textproc/rubber \
		x11/gnome/gedit

pre-configure:
	${SUBST_CMD} ${WRKSRC}/latex/latex/environment.py

.include <bsd.port.mk>

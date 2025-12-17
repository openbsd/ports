COMMENT = gimp plugin for drawing arrows
CATEGORIES = graphics

# GPLv3+
PERMIT_PACKAGE = Yes

RUN_DEPENDS = graphics/gimp/snapshot

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH = *

GH_PROJECT = gimp-stroke-arrows
GH_ACCOUNT = Scallact
GH_TAGNAME = v0.7

GIMP3_PLUGINS = lib/gimp/3.0/plug-ins
SUBST_VARS +=	GIMP3_PLUGINS

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/${GIMP3_PLUGINS}/pl_stroke_arrows
	${INSTALL_SCRIPT} ${WRKDIST}/pl_stroke_arrows/pl_stroke_arrows.py \
	    ${PREFIX}/${GIMP3_PLUGINS}/pl_stroke_arrows

.include <bsd.port.mk>

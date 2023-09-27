MULTI_PACKAGES = -main -otr

# XXX -stable package builds can't detect PKGSPEC updates properly;
# if backporting an update to stable, ensure all ports depending on
# this are bumped and that -current is same/newer version than -stable
COMMENT-main =	modular IRC client with many features
COMMENT-otr =	OTR (off-the-record) plugin for irssi

V =		1.4.4
REVISION =	0
DISTNAME =	irssi-$V
PKGSPEC-main =	irssi-=$V
PKGNAME-main =	irssi-$V
PKGNAME-otr =	irssi-otr-$V

CATEGORIES =	net

HOMEPAGE =	https://www.irssi.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c crypto curses glib-2.0 gmodule-2.0 m perl ssl

SITES =		https://github.com/irssi/irssi/releases/download/${V}/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODULES =	devel/meson

LIB_DEPENDS =	devel/glib2>=2.28.0

MODMESON_CONFIGURE_ARGS +=	-Ddisable-utf8proc=yes \
				-Dwith-otr=yes \
				-Dwith-perl=yes \
				-Dwith-proxy=yes

# disable meson's default of using "-Wl,--as-needed" on ld.bfd arches;
# build failures due to undefined references are often seen.
.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
MODMESON_CONFIGURE_ARGS +=      -Db_asneeded=false
.endif

RUN_DEPENDS-otr =	net/irssi,-main
LIB_DEPENDS-otr =	devel/glib2>=2.28.0 \
			security/libgcrypt>=1.2.0 \
			security/libotr>=4.1.0

WANTLIB-otr =	gcrypt glib-2.0 otr

# tests write to it
PORTHOME =	${WRKDIR}

post-patch:
	${SUBST_CMD} ${WRKSRC}/meson.build

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/irssi/
	${INSTALL_DATA} ${WRKSRC}/irssi.conf ${PREFIX}/share/examples/irssi/
.for l in themes scripts
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/irssi/${l}/
	mv ${WRKINST}${SYSCONFDIR}/irssi/${l}/* \
		${PREFIX}/share/examples/irssi/${l}/
.endfor

.include <bsd.port.mk>

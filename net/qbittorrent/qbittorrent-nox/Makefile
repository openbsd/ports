COMMENT =		BitTorrent client with web interface
PKGNAME =		qbittorrent-nox-${VER}
REVISION =		0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Sql Qt5Xml
WANTLIB += boost_system-mt c crypto execinfo m ssl torrent-rasterbar
WANTLIB += z

LIB_DEPENDS +=		net/libtorrent-rasterbar \
			devel/boost

CONFIGURE_ARGS +=	--disable-gui

# remove include directives which cause incorrect gmake behavior
pre-build:
	@cd ${WRKBUILD}/src && \
		sed -ie "/^\-include/d" Makefile

pre-install:
	${SUBST_CMD} ${WRKSRC}/conf.pri

.include <bsd.port.mk>

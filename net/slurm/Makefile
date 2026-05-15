COMMENT =	network traffic monitor and statistics

V =		0.4.4
# alt repo pulls in several fixes https://github.com/mattthias/slurm/pull/53
DIST_TUPLE =	github Iksas slurm 323d2bfced4b762f207633b50c0832ae1b19c40c .
PKGNAME =	slurm-${V}pl0
CATEGORIES =	net

HOMEPAGE =	https://github.com/mattthias/slurm/wiki/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =	c curses

MODULES =	devel/meson

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/slurm.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/slurm/
.for i in COPYRIGHT FAQ THANKS COPYING
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/slurm/
.endfor

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.11 1999/11/12 19:14:40 turan Exp $

DISTNAME=	screen-3.7.6
CATEGORIES=	misc
MASTER_SITES=	ftp://ftp.uni-erlangen.de/pub/utilities/screen/ \
		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= screen

MAINTAINER=	Hannah Schroeter <uk1o@rz114s0-197.rz.uni-karlsruhe.de>

# The autoconf.in files are too old to use the latest autoconf and
# without the latest autoconf we cant say "GNU_CONFIGURE" because
# configure doesn't know about sysconfdir.  So we do it this way
# instead
HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--prefix=${PREFIX}

post-install:
	@${MKDIR} ${PREFIX}/lib/screen
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/screen.info ${PREFIX}/info/dir
	${INSTALL_DATA} ${WRKSRC}/etc/etcscreenrc ${PREFIX}/lib/screen/screenrc
	${INSTALL_DATA} ${WRKSRC}/terminfo/screencap ${PREFIX}/lib/screen
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>

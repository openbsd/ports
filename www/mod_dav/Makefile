# $OpenBSD: Makefile,v 1.3 2002/11/10 15:28:38 jakob Exp $

COMMENT=	"a class 1 and 2 DAV server for the Apache webserver"

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
ONLY_FOR_ARCHS= alpha i386 m68k powerpc sparc sparc64

PKGNAME=	mod_dav-1.0.3
DISTNAME=	mod_dav-1.0.3-1.3.6
CATEGORIES=	www

MASTER_SITES=	http://www.webdav.org/mod_dav/

HOMEPAGE=	http://www.webdav.org/mod_dav/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		expat.2::textproc/expat

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-apxs=/usr/sbin/apxs \
			--with-expat=${LOCALBASE}

DOCDIR=		share/doc/mod_dav
DOCFILES=	README INSTALL LICENSE.html

post-build:
	@sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_dav-enable > ${WRKBUILD}/mod_dav-enable

NO_REGRESS=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_dav-enable ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKBUILD}/libdav.so ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/${DOCDIR}
.for f in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/${DOCDIR}
.endfor

.include <bsd.port.mk>

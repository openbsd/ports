# $OpenBSD: Makefile,v 1.9 2005/01/26 02:24:06 alek Exp $

COMMENT=	"transparently compress Apache output"

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

V=		1.3.26.1a
DISTNAME=	mod_gzip-${V}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mod-gzip/}
EXTRACT_SUFX=   .tgz

HOMEPAGE=	http://www.schroepl.net/projekte/mod_gzip/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# Apache
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	PKGNAME
NO_REGRESS=	Yes

HTML_DOCS=	browser.htm cache.htm config.htm encoding.htm \
		enhancements.htm extern.gif firewalls.htm index.htm \
		links.htm mod_gzip_logo.gif status.htm valid-css.png \
		valid-xhtml11.png versions.htm

do-build:
	cd ${WRKSRC} && /usr/sbin/apxs -Wc,"${CFLAGS}" -c mod_gzip.c \
		mod_gzip_debug.c mod_gzip_compress.c -o ${WRKBUILD}/mod_gzip.so
	sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_gzip-enable > ${WRKBUILD}/mod_gzip-enable

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mod_gzip
	${INSTALL_DATA} ${WRKBUILD}/mod_gzip.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_gzip-enable ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/docs/mod_gzip.conf.sample \
		${PREFIX}/share/examples/mod_gzip
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_gzip
.for i in ${HTML_DOCS}
	${INSTALL_DATA} ${WRKSRC}/docs/manual/english/${i} \
		${PREFIX}/share/doc/mod_gzip
.endfor

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.21 2002/05/13 23:31:26 espie Exp $

COMMENT=	"network-capable tape backup (client and tape server)"
COMMENT-client=	"network-capable tape backup (client only)"

DISTVERSION=	2.4.2p2

# 2.4.2p2 is problematical as a package name, because we have been
# marking OpenBSD package revisions with a "pX" suffix.
PKGVERSION=	${DISTVERSION:S/p/./}

DISTNAME=	amanda-${DISTVERSION}

PKGNAME=	amanda-${PKGVERSION}
PKGNAME-client=	amanda-client-${PKGVERSION}

CATEGORIES=	misc
NEED_VERSION=	1.489

HOMEPAGE=	http://www.amanda.org/

MAINTAINER=	Tom Schutter <t.schutter@att.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.amanda.org/pub/amanda/ \
		${MASTER_SITE_SOURCEFORGE:=amanda/}

# Amanda configure looks for gtar and smbclient so that it can hard-code
# the pathnames.
# Configure looks for gnuplot to see if it should build amplot.
BUILD_DEPENDS+= ::archivers/gtar \
		::net/samba/stable \
		::math/gnuplot

# There is no need to set RUN_DEPENDS, because Amanda will run fine
# without gtar, smbclient, and gnuplot.  They will only be required
# if the user creates a configuration that needs them, and then
# Amanda will gracefully tell them what is required.

MULTI_PACKAGES=	-client

# 2.4.2 exposed a bug in BSD make.
# Please see http://www.egroups.com/message/amanda-hackers/2333 (and
# following thread).
#
# (Summary:  yes; appears to be a problem with FreeBSD make; see
# http://www.FreeBSD.org/cgi/query-pr.cgi?pr=23328 for that part.  A
# circumvention is to hack the Makefiles; another is to use gmake.)
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/config

# Because Amanda does not conform to shared library naming standards,
# and knowing that no software outside of Amanda attempts to use the
# shared libraries, we disable the generation of shared libraries.
# Use mmap instead of shm to work around broken uvm post 2.7.
CONFIGURE_ARGS=	--disable-shared \
		--libexecdir=${PREFIX}/libexec/amanda \
		--localstatedir=/var \
		--with-configdir=${SYSCONFDIR}/amanda \
		--with-mmap \
		--with-user=operator \
		--with-group=operator

OLD_DOC_DIR=	${PREFIX}/share/amanda
DOC_DIR=	${PREFIX}/share/doc/amanda
EXAMPLE_DIR=	${PREFIX}/share/examples/amanda

post-install:
	@cd ${WRKSRC}; \
	  ${INSTALL_DATA_DIR} ${DOC_DIR}; \
          ${INSTALL_DATA} AUTHORS ${DOC_DIR}; \
          ${INSTALL_DATA} NEWS ${DOC_DIR}; \
          ${INSTALL_DATA} README ${DOC_DIR}; \
	  mv ${OLD_DOC_DIR}/* ${DOC_DIR}; \
	  rmdir ${OLD_DOC_DIR}; \
	  ${INSTALL_DATA_DIR} ${EXAMPLE_DIR}; \
	  ${INSTALL_DATA} example/*.ps ${EXAMPLE_DIR}; \
	  ${INSTALL_DATA} example/disklist ${EXAMPLE_DIR}; \
	  cd example; \
	    for f in *.conf *.conf.chg-scsi; do \
	      sed -e 's,usr/adm,var,' \
		  -e 's,/usr/local/etc,${SYSCONFDIR},' $$f \
	      > ${EXAMPLE_DIR}/$$f; \
	    done
	@${INSTALL_DATA} ${FILESDIR}/crontab.sample ${EXAMPLE_DIR}

.include <bsd.port.mk>

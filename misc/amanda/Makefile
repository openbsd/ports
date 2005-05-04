# $OpenBSD: Makefile,v 1.28 2005/05/04 17:08:24 sturm Exp $

COMMENT=	"network-capable tape backup (client and tape server)"
COMMENT-client=	"network-capable tape backup (client only)"

DISTVERSION=	2.4.4p4

# 2.4.4p4 is problematical as a package name, because we have been
# marking OpenBSD package revisions with a "pX" suffix.
PKGVERSION=	${DISTVERSION:S/p/./}

DISTNAME=	amanda-${DISTVERSION}

PKGNAME=	amanda-${PKGVERSION}
PKGNAME-client=	amanda-client-${PKGVERSION}

CATEGORIES=	misc

HOMEPAGE=	http://www.amanda.org/

MAINTAINER=	Olivier Cherrier <oc@symacx.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m readline termcap

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=amanda/}

# Amanda configure looks for gtar and smbclient so that it can hard-code
# the pathnames.
# Configure looks for gnuplot to see if it should build amplot.
BUILD_DEPENDS+= :gtar-*:archivers/gtar \
		:samba-*:net/samba \
		:gnuplot-*:math/gnuplot

# There is no need to set RUN_DEPENDS, because Amanda will run fine
# without gtar, smbclient, and gnuplot.  They will only be required
# if the user creates a configuration that needs them, and then
# Amanda will gracefully tell them what is required.

MULTI_PACKAGES=	-client
SUBPACKAGE?=

CONFIGURE_STYLE=		gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config

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
	  ${INSTALL_DATA} ChangeLog ${DOC_DIR}; \
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
	@${INSTALL_DATA} /dev/null ${EXAMPLE_DIR}/amandates

.include <bsd.port.mk>

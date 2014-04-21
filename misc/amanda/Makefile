# $OpenBSD: Makefile,v 1.48 2014/04/21 22:25:41 ajacoutot Exp $

BROKEN-alpha=	internal compiler error: in extract_insn, at recog.c:2077

# XXX -main contains the files from -client rather than depending it
COMMENT-main=	network-capable tape backup (client and tape server)
COMMENT-client=	network-capable tape backup (client only)
COMMENT-doc=	network-capable tape backup (documentation)

DISTVERSION=	2.4.5p1

# PKGVERSION=	${DISTVERSION}p1
# Minor patched releases are usually named with a "pX" suffix.
# These names can not be used with the OpenBSD ports framework.
PKGVERSION=   ${DISTVERSION:S/p/./}

DISTNAME=	amanda-${DISTVERSION}

PKGNAME-main=	amanda-${PKGVERSION}
PKGNAME-client=	amanda-client-${PKGVERSION}
PKGNAME-doc=	amanda-doc-${PKGVERSION}
REVISION-main=	5
REVISION-client=3

CATEGORIES=	misc

HOMEPAGE=	http://www.amanda.org/

MAINTAINER=	Olivier Cherrier <oc@symacx.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=amanda/}

# AMANDA configure looks for gtar and smbclient so that it can hard-code
# the pathnames.
# Configure looks for gnuplot to see if it should build amplot.
BUILD_DEPENDS+= archivers/gtar \
		net/samba \
		math/gnuplot

# There is no need to set RUN_DEPENDS, because AMANDA will run fine
# without gtar, smbclient, and gnuplot.  They will only be required
# if the user creates a configuration that needs them, and then
# AMANDA will gracefully tell them what is required.

WANTLIB=		c m readline termcap
PKG_ARCH-doc=		*
WANTLIB-doc=
LIB_DEPENDS-doc=

MULTI_PACKAGES=	-main -client -doc

FLAVORS=	db gpg
FLAVOR?=

CONFIGURE_STYLE=		gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config

# Because AMANDA does not conform to shared library naming standards,
# and knowing that no software outside of AMANDA attempts to use the
# shared libraries, we disable the generation of shared libraries.
CONFIGURE_ARGS=	--disable-shared \
		--libexecdir=${PREFIX}/libexec/amanda \
		--with-configdir=${SYSCONFDIR}/amanda \
		--with-user=operator \
		--with-group=operator
USE_GROFF =	Yes

# Use this flavor to speed things up if you have large AMANDA
# databases.
.if ${FLAVOR:Mdb}
WANTLIB+=	lib/db4/db
LIB_DEPENDS+=	databases/db/v4
CONFIGURE_ARGS+= --with-db=db
CFLAGS+=	 -L${LOCALBASE}/lib
.endif

.if ${FLAVOR:Mgpg}
BUILD_DEPENDS+=  security/gnupg
CONFIGURE_ENV+=  GZIP=${LOCALBASE}/bin/gpgzip
.endif

LIBTOOL_FLAGS=	--tag=disable-shared

OLD_DOC_DIR=	${PREFIX}/share/amanda
DOC_DIR=	${PREFIX}/share/doc/amanda
EXAMPLE_DIR=	${PREFIX}/share/examples/amanda

post-install:
	chmod a+rX ${PREFIX}/sbin/amrecover
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
	@sed -e 's,@LOCALBASE@,${LOCALBASE},' \
	  ${FILESDIR}/crontab.sample > ${EXAMPLE_DIR}/crontab.sample
	@${INSTALL_DATA} /dev/null ${EXAMPLE_DIR}/amandates
	@sed -e 's,@LOCALBASE@,${LOCALBASE},' \
	     -e 's,@SYSCONFDIR@,${SYSCONFDIR},' \
	     ${FILESDIR}/gpgzip > ${PREFIX}/bin/gpgzip;

.include <bsd.port.mk>

# From FreeBSD:		Satoshi Taoka <taoka@infonets.hiroshima-u.ac.jp>
#
# $FreeBSD: Makefile,v 1.19 1997/09/23 02:17:58 max Exp $
# $OpenBSD: Makefile,v 1.22 2000/04/21 01:01:32 espie Exp $

DISTNAME=	Wnn4.2
MULTI_PACKAGES=-dict
NEED_VERSION=	1.270
SUBPACKAGE?=

.if ${SUBPACKAGE} == "-dict"
CATEGORIES=	japanese
PREFIX=/var/dict
PKGNAME=	ja-Wnn-dict-4.2
.elif ${SUBPACKAGE} == "-zh"
CATEGORIES=	chinese
PKGNAME=	zh-Wnn-4.2
.elif ${SUBPACKAGE} == "-zhdict"
CATEGORIES=	chinese
PKGNAME=	zh-Wnn-dict-4.2
.elif ${SUBPACKAGE} == "-ko"
CATEGORIES=	korean
PKGNAME=	ko-Wnn-4.2
.elif ${SUBPACKAGE} == "-kodict"
CATEGORIES=	korean
PKGNAME=	ko-Wnn-dict-4.2
.else
CATEGORIES=	japanese
PKGNAME=	ja-Wnn-4.2
.endif

MASTER_SITES=	ftp://ftp.u-tokyo.ac.jp/pub/Japanese/Wnn/ \
		ftp://ports.jp.FreeBSD.org/pub/incoming/distfiles/
DISTFILES=	Wnn4.2.tar.gz Wnn4.2.patch.tar.gz

MAINTAINER=	espie@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_ONLY=	Wnn4.2.tar.gz
WRKDIST=	${WRKDIR}/Xsi
# `User' configuration file
CONFIG_FILE=	${WRKDIST}/config/config.h

PORT_JDOCDIR=	${PREFIX}/share/doc/ja-Wnn
JDOC_FROM=	${WRKSRC}/Wnn

PORT_CDOCDIR=	${PREFIX}/share/doc/zh-cWnn
CDOC_FROM=	${WRKSRC}/cWnn

# Will turn into a RUN_DEPENDS when we install non-formatted manpages
BUILD_DEPENDS=	jgroff::japanese/groff
# Run depends ensure this does not turn into infinite recursion, since
# this is not needed before package build time.
# I'm grateful to having `real' cookies, which means this is possible.
RUN_DEPENDS=	${LOCALBASE}/lib/wnn/install-script::japanese/Wnn-data

do-distpatch:
	cd ${WRKDIR} && tar zxf ${FULLDISTDIR}/Wnn4.2.patch.tar.gz
	cd ${WRKSRC} && patch ${PATCH_DIST_ARGS} < ${WRKDIR}/Wnn4.2.patch

# do those as post-patch, because of the $Id: Makefile,v 1.22 2000/04/21 01:01:32 espie Exp $
post-patch:
	@cd ${WRKDIST}; \
	for file in Wnn/jd/jserverrc cWnn/cd/cserverrc kWnn/kd/kserverrc; do\
	perl -pi.bak -e 's,\@LIBDIR/\@LANG/dic,/var/dict/\@LANG,' $$file; done

do-configure:
	@echo "#define BuildWnn		YES" >${CONFIG_FILE}
.if ${MULTI_PACKAGES:M-zh}
	@echo "#define BuildCWnn	YES" >>${CONFIG_FILE}
.else
	@echo "#define BuildCWnn	NO"  >>${CONFIG_FILE}
.endif
.if ${MULTI_PACKAGES:M-ko}
	@echo "#define BuildKWnn	YES" >>${CONFIG_FILE}
.else
	@echo "#define BuildKWnn	NO"  >>${CONFIG_FILE}
.endif
	@echo "#define BuildXwnmo	NO"  >>${CONFIG_FILE}
	@echo "#define BuildJlibV3	NO"  >>${CONFIG_FILE}
	@cd ${WRKSRC}/config && ln -sf Project.tmpl X11.tmpl

MAKE_FLAGS=IMAKE='imake -DPorts' WNNOWNER_INDIRECT=wnn
FAKE_FLAGS=DESTDIR=${WRKINST} WNNOWNER_INDIRECT=bin

MAKE_ENV=IMAKEINCLUDE=-I${WRKSRC}/config
# These are necessary because this package uses a different Makefile for
#  building and installing etc.

do-build:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} make ${MAKE_FLAGS} -f Makefile.inst ${ALL_TARGET}
ALL_TARGET=World
INSTALL_TARGET=install install.man
FAKE=Yes

post-install:
	${INSTALL_DATA_DIR} ${PORT_JDOCDIR}
	@(cd ${JDOC_FROM}; tar cf - manual manual.en | \
		(cd ${PORT_JDOCDIR}; tar xf -))
	@chown -R ${SHAREOWN}.${SHAREGRP} ${PORT_JDOCDIR}
.if ${MULTI_PACKAGES:M-zo}
	${INSTALL_DATA_DIR} ${PORT_JDOCDIR}
	@(cd ${JDOC_FROM}; tar cf - manual manual.en | \
		(cd ${PORT_JDOCDIR}; tar xf -))
	@chown -R ${SHAREOWN}.${SHAREGRP} ${PORT_JDOCDIR}
.endif

.include <bsd.port.mk>

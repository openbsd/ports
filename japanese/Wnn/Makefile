# From FreeBSD:		Satoshi Taoka <taoka@infonets.hiroshima-u.ac.jp>
#
# $FreeBSD: Makefile,v 1.19 1997/09/23 02:17:58 max Exp $
# $OpenBSD: Makefile,v 1.50 2006/08/04 19:57:32 sturm Exp $

COMMENT= 	"Japanese input method"
COMMENT-dict=	"dictionaries for Japanese Wnn"
COMMENT-ko= 	"Korean input method"
COMMENT-kodict= "dictionaries for Korean Wnn"
COMMENT-zh=	"Chinese input method"
COMMENT-zhdict= "dictionaries for Chinese Wnn"
COMMENT-data= 	"common files to all languages of Wnn"
COMMENT-xwnmo=	"X11 input method for Wnn"

DISTNAME=	Wnn4.2

# If you are building this manually, you can override MULTI_PACKAGES
# on the command line, and thus avoid building all three languages

MULTI_PACKAGES=-dict -zh -zhdict -ko -kodict -xwnmo -data

PKGNAME=	ja-Wnn-4.2p2
PKGNAME-dict=	ja-Wnndict-4.2p0
PKGNAME-zh=	zh-Wnn-4.2p0
PKGNAME-zhdict=	zh-Wnndict-4.2p0
PKGNAME-ko=	ko-Wnn-4.2p0
PKGNAME-kodict=	ko-Wnndict-4.2p0
PKGNAME-xwnmo=	Wnn-xwnmo-4.2
PKGNAME-data=	Wnn-data-4.2

WNNDICBASE=/var
WNNDICDIR=${WNNDICBASE}/dict/Wnn
WNNBASE=${LOCALBASE}
SUBST_VARS=WNNBASE

.if defined(PACKAGING)
SUBPACKAGE?=
.  if ${SUBPACKAGE} == "-dict"
CATEGORIES=	japanese
PREFIX=${WNNDICBASE}
.  elif ${SUBPACKAGE} == "-zh"
CATEGORIES=	chinese
WANTLIB=	c curses
.  elif ${SUBPACKAGE} == "-zhdict"
CATEGORIES=	chinese
PREFIX=${WNNDICBASE}
.  elif ${SUBPACKAGE} == "-ko"
CATEGORIES=	korean
WANTLIB=	c curses
.  elif ${SUBPACKAGE} == "-kodict"
CATEGORIES=	korean
PREFIX=${WNNDICBASE}
.  elif ${SUBPACKAGE} == "-xwnmo"
CATEGORIES=	japanese chinese korean
WANTLIB=	c Xt SM Xmu X11 Xext ICE
.  elif ${SUBPACKAGE} == "-data"
CATEGORIES=	japanese chinese korean
.  else
WANTLIB=	c curses
CATEGORIES=	japanese
.  endif
.  if ${SUBPACKAGE} != "-data"
RUN_DEPENDS=	::japanese/Wnn,-data
.  endif
.else
CATEGORIES=	japanese
.endif

MASTER_SITES=	ftp://ftp.u-tokyo.ac.jp/pub/Japanese/Wnn/ \
		ftp://ports.jp.FreeBSD.org/pub/incoming/distfiles/
DISTFILES=	Wnn4.2.tar.gz Wnn4.2.patch.tar.gz

MAINTAINER=	Marc Espie <espie@openbsd.org>

#		BSD
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
BUILD_DEPENDS=	:ja-groff-*:japanese/groff
# Run depends ensure this does not turn into infinite recursion, since
# this is not needed before package build time.

USE_X11=	Yes

do-distpatch:
	cd ${WRKDIR} && tar zxf ${FULLDISTDIR}/Wnn4.2.patch.tar.gz
	cd ${WRKSRC} && patch ${PATCH_DIST_ARGS} < ${WRKDIR}/Wnn4.2.patch

SRCDOCDIRS=Wnn/man Wnn/manual Wnn/manual.en cWnn/man cWnn/manual cWnn/manual.en

# do those as post-patch, because of the $Id
post-patch:
	@cd ${WRKDIST}; \
	for file in Wnn/jd/jserverrc cWnn/cd/cserverrc kWnn/kd/kserverrc; do\
	perl -pi.bak -e 's,\@LIBDIR/\@LANG/dic,${WNNDICDIR}/\@LANG,;' $$file; done
# Commands are installed directly under /usr/local/bin and dictionaries in /var/dict
	@{ for dir in ${SRCDOCDIRS}; do \
	find ${WRKSRC}/$$dir -type f; done; } \
		| xargs perl -pi.bok -e \
		's,/usr/local/bin/Wnn4/,${PREFIX}/bin/,g; s,/usr/local/lib/wnn/dic,${WNNDICDIR},g;'
	@{ for dir in ${SRCDOCDIRS}; do \
	find ${WRKSRC}/$$dir -type f -name \*.bok; done; } | xargs rm

do-configure:
	@echo "   WNNDICDIR = ${WNNDICDIR}"   >${CONFIG_FILE}
	@echo "  WNNBASEDIR = ${PREFIX}"     >>${CONFIG_FILE}
	@echo "#define BuildWnn		YES" >>${CONFIG_FILE}
	@echo "#define BuildJlibV3	YES" >>${CONFIG_FILE}
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
.if ${MULTI_PACKAGES:M-xwnmo}
	@echo "#define BuildXwnmo	YES" >>${CONFIG_FILE}
.else
	@echo "#define BuildXwnmo	NO"  >>${CONFIG_FILE}
.endif
	@cd ${WRKSRC}/config && ln -sf Project.tmpl X11.tmpl


# Xfree4 believes it can build html documentation, fat chance...
#MAKE_FLAGS=IMAKE='imake -DBuildHtmlManPages=0 -DPorts' WNNOWNER_INDIRECT=_wnn
MAKE_FLAGS=IMAKE='imake -DPorts' WNNOWNER_INDIRECT=_wnn
FAKE_FLAGS=DESTDIR=${WRKINST} WNNOWNER_INDIRECT=bin

MAKE_ENV=IMAKEINCLUDE=-I${WRKSRC}/config
# These are necessary because this package uses a different Makefile for
#  building and installing etc.

do-build:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} make ${MAKE_FLAGS} -f Makefile.inst ${ALL_TARGET}
ALL_TARGET=World
INSTALL_TARGET=install install.man
NO_REGRESS=Yes

post-install:
	${INSTALL_DATA_DIR} ${PORT_JDOCDIR}
	@(cd ${JDOC_FROM}; tar cf - manual manual.en | \
		(cd ${PORT_JDOCDIR}; tar xf -))
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PORT_JDOCDIR}
.if ${MULTI_PACKAGES:M-zh}
	${INSTALL_DATA_DIR} ${PORT_CDOCDIR}
	@(cd ${CDOC_FROM}; tar cf - manual manual.en | \
		(cd ${PORT_CDOCDIR}; tar xf -))
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PORT_CDOCDIR}
.endif
	${INSTALL_DATA_DIR} ${PREFIX}/lib/wnn
	${INSTALL_DATA} ${WRKDIST}/Wnn/jd/sysV/cvt_key* ${PREFIX}/lib/wnn
	${INSTALL_DATA} ${WRKDIST}/Wnn/jd/serverdefs ${PREFIX}/lib/wnn
	${INSTALL_SCRIPT} ${FILESDIR}/install-script ${PREFIX}/lib/wnn

.include <bsd.port.mk>

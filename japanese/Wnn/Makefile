# From FreeBSD:		Satoshi Taoka <taoka@infonets.hiroshima-u.ac.jp>
#
# $FreeBSD: Makefile,v 1.19 1997/09/23 02:17:58 max Exp $
# $OpenBSD: Makefile,v 1.16 2000/04/05 17:13:55 espie Exp $

DISTNAME=	Wnn4.2
PKGNAME=	ja-Wnn-4.2
CATEGORIES?=	japanese
NEED_VERSION=	1.210
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

PORT_DOCDIR=	${PREFIX}/share/doc/ja-Wnn
DOC_FROM=	${WRKSRC}/Wnn

do-distpatch:
	cd ${WRKDIR} && tar zxf ${FULLDISTDIR}/Wnn4.2.patch.tar.gz
	cd ${WRKSRC} && patch ${PATCH_DIST_ARGS} < ${WRKDIR}/Wnn4.2.patch

do-configure:
	cd ${WRKSRC}/config && ln -sf Project.tmpl X11.tmpl

# for PREFIX
pre-build:
	for file in ${WRKSRC}/config/Project.tmpl \
		${WRKSRC}/Contrib/dic/gerodic/Makefile; do \
	  mv $$file $$file.orig2; \
	  sed 's!^\([ ]*PREFIX = \).*$$!\1${PREFIX}!' \
		$$file.orig2 > $$file; \
	done

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
	${INSTALL_DATA_DIR} ${PORT_DOCDIR}
	@(cd ${DOC_FROM}; tar cf - manual manual.en | \
		(cd ${PORT_DOCDIR}; tar xf -))
	@chown -R ${SHAREOWN}.${SHAREGRP} ${PORT_DOCDIR}

.include <bsd.port.mk>

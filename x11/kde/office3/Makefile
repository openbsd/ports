# $OpenBSD: Makefile,v 1.15 2003/12/31 07:13:19 brad Exp $

COMMENT=		"office suite for KDE"

CATEGORIES=		x11 x11/kde productivity
VERSION=		3.1.4
VMEM_WARNING=		Yes
MASTER_SITES?=		${MASTER_SITE_KDE:S@$@unstable/${DISTNAME}/src/@}

DISTNAME=	koffice-1.2.95

FAKE_FLAGS=	${MAKE_FLAGS} TAR=tar DESTDIR=${WRKINST}

SEPARATE_BUILD=	flavored

MODKDE_VERSION=

LIB_DEPENDS=	kdecore.4,DCOP,artskde,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjava,kparts,kspell::x11/kde/libs3 \
		python2.2.0.0:python-2.2*:lang/python/2.2 \
		art_lgpl_2.5::graphics/libart \
		wv2::converters/wv2

post-extract:
	ln -s /usr/bin/true ${WRKDIR}/bin/automake-1.7
	ln -s /usr/bin/true ${WRKDIR}/bin/aclocal-1.7

.include <bsd.port.mk>

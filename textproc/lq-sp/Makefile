# $OpenBSD: Makefile,v 1.2 2002/10/28 22:43:46 naddy Exp $

COMMENT=	"SGML parser and entity manager"

DISTNAME=	lq-sp-1.3.4.7
CATEGORIES=	textproc
HOMEPAGE=	http://www.htmlhelp.com/tools/validator/offline/

MAINTAINER=	Gerardo Santana Gomez Garrido <santana@openbsd.org.mx>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MAKE_FLAGS=	CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS} -fno-implicit-templates" \
		RANLIB=${RANLIB}

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/nsgmls/lq-nsgmls ${PREFIX}/bin

.include <bsd.port.mk>

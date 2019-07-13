# $OpenBSD: Makefile.inc,v 1.2 2019/07/13 10:59:26 sthen Exp $

COMMENT ?=	active object framework

V ?=		6.0.1
DISTNAME ?=	${QP_PROJECT}_$V
PKGNAME ?=	${QP_PROJECT}-$V

CATEGORIES ?=	devel

HOMEPAGE ?=	https://www.state-machine.com/

# GPLv3+
PERMIT_PACKAGE ?=	Yes

MASTER_SITES ?=		${MASTER_SITE_SOURCEFORGE:=qpc/}

EXTRACT_SUFX ?=		.zip

MAKE_FLAGS =		CC="${CC}" \
			CPP="${CXX}" \
			CFLAGS="-c ${CFLAGS} -I${WRKDIST}/include -I${WRKDIST}/src -I${WRKSRC}" \
			CPPFLAGS="-c ${CXXFLAGS} -I${WRKDIST}/include -I${WRKDIST}/src -I${WRKSRC}"

USE_GMAKE ?=		Yes

NO_TEST =		Yes

WRKDIST ?=		${WRKDIR}/${QP_PROJECT}
WRKSRC ?=		${WRKDIST}/ports/posix

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/${QP_PROJECT}
	${INSTALL_DATA} ${WRKSRC}/dbg/libqp.a ${PREFIX}/lib/${QP_PROJECT}
	${INSTALL_DATA_DIR} ${PREFIX}/include/${QP_PROJECT}
	${INSTALL_DATA} ${WRKDIST}/ports/posix/*.h ${WRKDIST}/include/* \
		${PREFIX}/include/${QP_PROJECT}

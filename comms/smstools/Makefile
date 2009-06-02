# $OpenBSD: Makefile,v 1.8 2009/06/02 15:57:48 sthen Exp $

COMMENT =	gateway to send and receive SMS through GSM mobile phones

DISTNAME =	smstools3-3.1.5

CATEGORIES =	comms

HOMEPAGE =	http://smstools3.kekekasvi.com/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c

MASTER_SITES =	${HOMEPAGE}/packages/

# some scripts use formail
RUN_DEPENDS =	::mail/procmail
LIB_DEPENDS =	mm::devel/mm

USE_GMAKE =	Yes
NO_REGRESS =	Yes
WRKDIST =	${WRKDIR}/smstools3
WRKSRC = 	${WRKDIST}/src

# gcc 3.3.5 internal compiler error
.if ${MACHINE_ARCH} == "mips64"
CFLAGS +=	-O0
.endif

EXTRA_CFLAGS +=	-I${LOCALBASE}/include -L${LOCALBASE}/lib

MAKE_FLAGS +=	CFLAGS="${CFLAGS} -D NUMBER_OF_MODEMS=64 `mm-config --cflags`"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/smsd ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKDIST}/scripts/{sendsms,sms2html} \
		${WRKDIST}/scripts/{sms2unicode,unicode2sms} \
		${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/smstools
	${INSTALL_DATA} ${WRKDIST}/examples/smsd.conf.full \
		${PREFIX}/share/examples/smstools
	${INSTALL_DATA} ${FILESDIR}/smsd.conf.openbsd \
	       ${PREFIX}/share/examples/smstools
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/smstools
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/smstools/slideshow
	${INSTALL_DATA} ${WRKDIST}/doc/*html ${PREFIX}/share/doc/smstools
	${INSTALL_DATA} ${WRKDIST}/doc/slideshow/* \
		${PREFIX}/share/doc/smstools/slideshow

.include <bsd.port.mk>

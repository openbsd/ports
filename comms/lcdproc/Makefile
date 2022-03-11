COMMENT =		interface to various LCD displays

V =			0.5.9
DISTNAME =		lcdproc-$V
CATEGORIES =		comms devel

HOMEPAGE =		http://www.lcdproc.org

# GPLv2+
PERMIT_PACKAGE =	Yes

LIB_DEPENDS =		devel/libftdi1 \
			devel/libhid \
			graphics/png
WANTLIB +=		X11 c curses ftdi1 hid kvm pthread png usb-1.0 usb

USE_GMAKE =		Yes

MASTER_SITES =		https://github.com/lcdproc/lcdproc/releases/download/v$V/

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include ${WITH_APM}" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread" \
			ac_cv_port_have_lpt=no
CONFIGURE_ARGS =	--enable-drivers=all,!icp_a106

# user docs; adds BDEP on xmlto, but currently has a validation failure
#INSTALL_TARGET =	install install-html-userguide

EXAMPLE_DIR = ${PREFIX}/share/examples/lcdproc
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${SUBST_CMD} -c ${WRKBUILD}/LCDd.conf ${EXAMPLE_DIR}/LCDd.conf
	${SUBST_CMD} -c ${WRKBUILD}/clients/lcdexec/lcdexec.conf \
		${EXAMPLE_DIR}/lcdexec.conf
	${SUBST_CMD} -c ${WRKBUILD}/clients/lcdproc/lcdproc.conf \
		${EXAMPLE_DIR}/lcdproc.conf
	chown -R ${SHAREOWN}:${SHAREGRP} ${EXAMPLE_DIR}
# lcdvc is a linux specific thing - prevent it appearing in PLIST
	rm ${PREFIX}/bin/lcdvc ${PREFIX}/man/man1/lcdvc.1

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mapm}
WITH_APM =	-DWITH_APM
.endif

.include <bsd.port.mk>

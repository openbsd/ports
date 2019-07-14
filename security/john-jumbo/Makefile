# $OpenBSD: Makefile,v 1.21 2019/07/14 00:39:39 naddy Exp $

COMMENT =	extremely fast password cracker, with community patches
BROKEN-alpha =	DES_bs.c:173: internal compiler error: in get_callee_fndecl, at tree.c:5940
FIX_EXTRACT_PERMISSIONS=Yes

V =		1.8.0
JV =		1
REVISION =	3
EXTRACT_SUFX =	.tar.xz

DISTNAME =	john-$V-jumbo-${JV}
PKGNAME =	john-jumbo-$V.${JV}
CATEGORIES =	security

HOMEPAGE =	http://www.openwall.com/john/

# files from various authors; see license review txt file
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto m nspr4 nss3 pcap plc4 plds4 pthread smime3
WANTLIB += nssutil3 sqlite3 ssl ssl3 z

MASTER_SITES =		http://www.openwall.com/john/j/

LIB_DEPENDS =		databases/sqlite3 \
			security/nss

USE_GMAKE =		Yes
MAKE_FILE =		Makefile.legacy

MODULES +=		lang/python
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	../run/*.py
CONFIGURE_STYLE =	bleh # hack around python.port.mk default

WRKSRC =		${WRKDIST}/src

COPTFLAGS :=		${CFLAGS}
CFLAGS +=		-c -DHAVE_NSS `pkg-config --cflags nss` \
			-DJOHN_SYSTEMWIDE=1 \
			-DJOHN_SYSTEMWIDE_HOME='\"${SYSCONFDIR}/john\"'
LDFLAGS +=		-lssl -lcrypto -lm -lz `pkg-config --libs nss`

MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}" \
			COPTFLAGS="${COPTFLAGS}" HAVE_NSS="-DHAVE_NSS" \
			J=${MAKE_JOBS}

.if ${MACHINE_ARCH} == "i386"
# there is actually a fallback method to allow use of sse where available and
# fall back to mmx/non-cpu-specific code, but it requires building multiple
# times with various targets (openbsd-x86-sse2 openbsd-x86-mmx openbsd-x86-any);
# see -DCPU_FALLBACK=1.
ALL_TARGET=		openbsd-x86-any
LDFLAGS+=		-Wl,-znotext
.elif ${MACHINE_ARCH} == "amd64"
ALL_TARGET=		openbsd-x86-64
.elif ${MACHINE_ARCH} == "alpha"
ALL_TARGET=		openbsd-alpha
.elif ${MACHINE_ARCH} == "powerpc"
ALL_TARGET=		openbsd-ppc32
.elif ${MACHINE_ARCH} == "hppa"
ALL_TARGET=		openbsd-pa-risc
.elif ${MACHINE_ARCH} == "sparc64"
ALL_TARGET=		openbsd-sparc64
.else
ALL_TARGET=		generic
.endif

BINS += SIPdump calc_stat cprepair genmkvpwd luks2john makechr
BINS += mkvcalcproba raw2dyna tgtsnarf uaf2john vncpcap2john wpapcap2john

do-configure:
	perl -pi -e 's,\$$JOHN/john.conf,${SYSCONFDIR}/john.conf,' ${WRKSRC}/params.h
	rm ${WRKSRC}/KRB4_*_plug.c	# no old DES API support in LibreSSL
	rm ${WRKSRC}/rawSHA0_fmt_plug.c # no SHA-0 support in LibreSSL

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/john
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/john
	${INSTALL_PROGRAM} ${WRKDIST}/run/john ${PREFIX}/bin
	cd ${WRKDIST}/run; ${INSTALL_PROGRAM} ${BINS} ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKDIST}/run/mailer \
	    ${WRKDIST}/run/*.{pl,py,rb} ${PREFIX}/bin
	for i in `find ${WRKDIST}/run -type l`; do \
	    ln -sf john ${PREFIX}/bin/`basename $$i`; done
	${INSTALL_DATA} ${WRKDIST}/run/*.{chr,conf,lst} \
	    ${PREFIX}/share/examples/john
	${INSTALL_DATA} ${WRKDIST}/doc/* ${PREFIX}/share/doc/john

# not using TEST_TARGET as it gets confused by the quotes in CFLAGS
do-test:
	cd ${WRKSRC}; ${MAKE_PROGRAM} -f ${MAKE_FILE} check

.include <bsd.port.mk>

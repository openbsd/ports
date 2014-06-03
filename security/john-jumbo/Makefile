# $OpenBSD: Makefile,v 1.1.1.1 2014/06/03 14:27:54 sthen Exp $

COMMENT =		extremely fast password cracker, with community patches

V =			1.7.9
JV =			7

DISTNAME =		john-$V-jumbo-${JV}
PKGNAME =		john-jumbo-$Vpl${JV}
CATEGORIES =		security

HOMEPAGE =		http://www.openwall.com/john/

# GPL & Public Domain
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto glib-2.0 gobject-2.0 gsf-1 m nspr4
WANTLIB += nss3 pcap plc4 plds4 pthread smime3 softokn3 ssl ssl3
WANTLIB += stdc++ xml2 z

MASTER_SITES =		http://www.openwall.com/john/g/
MODULES +=		devel/gettext
LIB_DEPENDS =		devel/libgsf \
			security/nss \
			textproc/libxml

USE_GMAKE =		Yes

WRKSRC =		${WRKDIST}/src

CFLAGS +=		-c -DHAVE_NSS `pkg-config --cflags nss` \
			-DJOHN_SYSTEMWIDE=1 \
			-DJOHN_SYSTEMWIDE_HOME='\"${SYSCONFDIR}/john\"'
LDFLAGS +=		-lssl -lcrypto -lm -lz `pkg-config --libs nss`

MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}" \
			HAVE_NSS="-DHAVE_NSS"

.if ${MACHINE_ARCH} == "i386"
# there is actually a fallback method to allow use of sse where available and
# fall back to mmx/non-cpu-specific code, but it requires building multiple
# times with various targets (openbsd-x86-sse2 openbsd-x86-mmx openbsd-x86-any);
# see -DCPU_FALLBACK=1.
ALL_TARGET=		openbsd-x86-any
.elif ${MACHINE_ARCH} == "amd64"
ALL_TARGET=		openbsd-x86-64
.elif ${MACHINE_ARCH} == "sparc"
ALL_TARGET=		openbsd-sparc
.elif ${MACHINE_ARCH} == "vax"
ALL_TARGET=		openbsd-vax
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

BINS=			office2john vncpcap2john SIPdump
ALL_TARGET+=		${BINS}

do-configure:
	${SUBST_CMD} ${WRKSRC}/params.h
	rm ${WRKSRC}/KRB4_*_plug.c # undefined reference to `des_set_odd_parity'

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/john
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/john
	${INSTALL_PROGRAM} ${WRKDIST}/run/john ${PREFIX}/bin
	cd ${WRKDIST}/run; ${INSTALL_PROGRAM} ${BINS} calc_stat genmkvpwd \
	     mkvcalcproba tgtsnarf unafs unique unshadow ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKDIST}/run/mailer \
	    ${WRKDIST}/run/*.{pl,py,rb} ${PREFIX}/bin
.for i in mozilla2john pdf2john racf2john rar2john ssh2john
	ln -sf john ${PREFIX}/bin/$i
.endfor
	${INSTALL_DATA} ${WRKDIST}/run/*.{chr,conf,lst} \
	    ${PREFIX}/share/examples/john
	${INSTALL_DATA} ${WRKDIST}/doc/* ${PREFIX}/share/doc/john

# not using TEST_TARGET as it gets confused by the quotes in CFLAGS
do-test:
	cd ${WRKSRC}; ${MAKE_PROGRAM} check

.include <bsd.port.mk>

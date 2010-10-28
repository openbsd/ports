# $OpenBSD: Makefile,v 1.6 2010/10/28 14:41:55 schwarze Exp $

CATEGORIES =	textproc
COMMENT =	gnu clone of nroff

# groff 1.15 as patched for OpenBSD-4.7
DISTNAME = groff-1.15.4.7
REVISION = 3
MASTER_SITES = http://www.bsdfrog.org/OpenBSD/distfiles/

# GPLv2
PERMIT_DISTFILES_FTP = 		Yes
PERMIT_DISTFILES_CDROM = 	Yes
PERMIT_PACKAGE_FTP = 		Yes
PERMIT_PACKAGE_CDROM = 		Yes

WRKDIST = ${WRKDIR}/groff
MAKE_FILE = Makefile.bsd-wrapper
WANTLIB += c m stdc++
RUN_DEPENDS += ::textproc/groff.mdoc

MAKE_FLAGS = BINDIR=${TRUEPREFIX}/bin MANDIR=${TRUEPREFIX}/man/cat \
	PREFIX=${TRUEPREFIX} DATASUBDIR=${TRUEPREFIX}/share \
	FONTDIR=${TRUEPREFIX}/share/groff_font \
	INDEXDIR=${TRUEPREFIX}/share/dict/papers \
	COMMON_WORDS=${TRUEPREFIX}/share/dict/eign

do-configure:
	cd ${WRKDIST} && ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} config.status

.include <bsd.port.mk>

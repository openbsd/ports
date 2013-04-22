# $OpenBSD: Makefile,v 1.71 2013/04/22 16:00:11 krw Exp $

COMMENT =	mirroring/synchronization over low bandwidth links

DISTNAME =	rsync-3.0.9
CATEGORIES =	net
HOMEPAGE =	http://rsync.samba.org/
REVISION =	3

MAINTAINER =	Marc Espie <espie@openbsd.org>

FLAVORS =	iconv
FLAVOR ?=

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =	ftp://ftp.samba.org/pub/rsync/ \
		ftp://ftp.samba.org/pub/rsync/old-versions/ \
		http://ftp.samba.org/ftp/rsync/ \
		ftp://ftp.funet.fi/pub/mirrors/samba.org/pub/rsync/

#SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =gnu
CONFIGURE_ARGS =--with-included-popt \
		--with-rsyncd-conf="${SYSCONFDIR}/rsyncd.conf" \
		--with-rsh="ssh -T" \
		--with-nobody-group=_rsync

.if ${FLAVOR:Miconv}
CONFIGURE_ENV += CPPFLAGS='-I${LOCALBASE}/include' \
		LDFLAGS='-L${LOCALBASE}/lib'
MODULES += converters/libiconv
.endif

DOCDIR =	${PREFIX}/share/doc/rsync

pre-configure:
	${SUBST_CMD} ${WRKSRC}/rsyncd.conf.5 \
		${WRKSRC}/support/rrsync

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/rsync ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rsync.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/rsyncd.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA} ${WRKSRC}/tech_report.tex ${DOCDIR}
	${INSTALL_PROGRAM} ${WRKSRC}/support/rrsync ${PREFIX}/bin

.include <bsd.port.mk>

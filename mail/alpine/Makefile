# $OpenBSD: Makefile,v 1.45 2019/07/12 20:47:24 sthen Exp $

# XXX consider moving to https://repo.or.cz/alpine.git

COMMENT-main=		UW e-mail client
COMMENT-c-client=	UW c-client mail access routines
COMMENT-imap=		UW IMAP4rev1/POP2/POP3 mail servers
COMMENT-mailutil=	UW IMAP4rev1/POP2/POP3 mail utility
COMMENT-pico=		UW text editor
COMMENT-pilot=		UW file system navigator
FIX_EXTRACT_PERMISSIONS =	Yes

V=			2.21
DISTNAME=		alpine-${V}
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS=		c-client 7.0

# grep "PICO version" ${WRKSRC}/pico/pico.h
PICO_V=			5.09
# grep PILOT_VERSION ${WRKSRC}/pico/pilot.c
PILOT_V=		2.99

PKGNAME-main=		alpine-${V}
PKGNAME-c-client=	c-client-${V}
PKGNAME-imap=		imap-uw-${V}
PKGNAME-mailutil=	mailutil-uw-${V}
PKGNAME-pico=		pico-${PICO_V}
PKGNAME-pilot=		pilot-${PILOT_V}

REVISION=		3
REVISION-pico=		20
REVISION-pilot=		20

EPOCH-c-client=		0
EPOCH-imap=		0
EPOCH-mailutil=		0

CATEGORIES=		mail
CATEGORIES-main=	mail news
CATEGORIES-c-client=	devel mail
CATEGORIES-pico=	editors
CATEGORIES-pilot=	sysutils

HOMEPAGE=		http://alpine.x10host.com/

# Apache 2.0
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://alpine.x10host.com/alpine/release/

MULTI_PACKAGES=		-main -c-client -imap -mailutil -pico -pilot

WANTLIB += c crypto iconv intl curses ssl

WANTLIB-main=		${WANTLIB} pthread
WANTLIB-c-client=	# empty
WANTLIB-pico=		${WANTLIB} pthread
WANTLIB-pilot=		${WANTLIB} pthread

LIB_DEPENDS=		devel/gettext,-runtime
BUILD_DEPENDS=		textproc/aspell/core
RUN_DEPENDS-main=	textproc/aspell/core
RUN_DEPENDS-pico=	textproc/aspell/core

SHLIB=			libc-client.so.${LIBc-client_VERSION}
MAKE_FLAGS=		EXTRACFLAGS="${CFLAGS}" \
			SHLIB="${SHLIB}" \
			SHLIBNAME=${SHLIB} \
			CC="${CC}"

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_search_regcomp=-lc \
			ac_cv_search_SSL_library_init="`pkg-config --libs openssl`"
CONFIGURE_ARGS=		--with-system-pinerc=${SYSCONFDIR}/pine.conf \
			--with-system-fixed-pinerc=${SYSCONFDIR}/pine.conf.fixed \
			--with-system-mail-directory=/var/mail \
			--with-ssl-certs-dir=/etc/ssl \
			--with-simple-spellcheck=aspell \
			--with-interactive-spellcheck=aspell \
			--with-c-client-target=bso \
			--with-debug-level=0 \
			--without-ldap \
			--without-tcl \
			--without-npa \
			--enable-quotas \
			--disable-debug

HEADERS=		c-client.h dummy.h env.h env_unix.h fdstring.h \
			flockcyg.h flocksim.h flstring.h fs.h ftl.h \
			imap4r1.h linkage.c linkage.h mail.h misc.h \
			netmsg.h newsrc.h nl.h nntp.h osdep.h pseudo.h \
			rfc822.h smtp.h sslio.h tcp.h tcp_unix.h unix.h \
			utf8.h utf8aux.h

post-install:
	# alpine, pico, pilot
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/alpine
	${INSTALL_DATA} ${WRKSRC}/doc/tech-notes/tech-notes.txt \
		${WRKSRC}/doc/mailcap.unx \
		${WRKSRC}/doc/mime.types \
		${PREFIX}/share/doc/alpine
	${WRKBUILD}/alpine/alpine -conf > \
		${PREFIX}/share/examples/alpine/pine.conf
	# c-client
	${INSTALL_DATA_DIR} ${PREFIX}/include/c-client
	cd ${WRKSRC}/c-client; ${INSTALL_DATA} ${HEADERS} \
		${PREFIX}/include/c-client
	${INSTALL_DATA} ${WRKBUILD}/c-client/c-client.a \
		${PREFIX}/lib/libc-client.a
	@if [ -f ${WRKBUILD}/imap/c-client/${SHLIB} ]; then \
		${INSTALL_DATA} ${WRKSRC}/c-client/${SHLIB} ${PREFIX}/lib; \
	fi
	# imap-uw
	${INSTALL_PROGRAM} ${WRKBUILD}/imap/imapd/imapd ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKBUILD}/imap/ipopd/ipop2d ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKBUILD}/imap/ipopd/ipop3d ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKBUILD}/imap/mlock/mlock ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKBUILD}/imap/dmail/dmail ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/imap/tmail/tmail ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/imap/src/{imapd,ipopd}/*.8 \
		${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/imap/src/{dmail,tmail}/*.1 \
		${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/imap-uw
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/imap-uw
	${INSTALL_DATA} ${FILESDIR}/c-client.cf \
		${PREFIX}/share/examples/imap-uw
	tar -C ${WRKSRC}/imap/docs -cf - . | \
		tar -C ${PREFIX}/share/doc/imap-uw -xf -
	find ${PREFIX}/share/doc/imap-uw -type f -exec chmod 0644 {} \;
	# mailutil
	${INSTALL_PROGRAM} ${WRKBUILD}/imap/mailutil/mailutil ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/imap/src/mailutil/mailutil.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

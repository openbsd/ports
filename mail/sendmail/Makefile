# $OpenBSD: Makefile,v 1.1.1.1 2014/09/16 17:09:31 jca Exp $

COMMENT =		mother of Mail Transfer Agents

DISTNAME =		sendmail.8.14.9
PKGNAME =		sendmail-8.14.9

CATEGORIES =		mail

HOMEPAGE =		http://www.sendmail.org/

# Sendmail License / BSD3 / BSD4 / Public Domain / CDDL (contrib/ directory)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto ssl

MASTER_SITES =		ftp://ftp.sendmail.org/pub/sendmail/ \
			ftp://ftp.bit.nl/mirror/sendmail/ \
			http://negi.ipv6labs.jp/pub/sendmail/

BUILD_DEPENDS =		textproc/groff

SUBDIRS =		libsmutil libsm libmilter sendmail mail.local mailstats makemap praliases smrsh editmap
MAKE_FLAGS =		O="${CFLAGS}" \
			SUBDIRS="${SUBDIRS} cf/cf"
MAKE_ENV =		M4="/usr/bin/m4"
FAKE_FLAGS =		SUBDIRS="${SUBDIRS}"

FLAVORS =		ldap sasl
FLAVOR ?=

WANT_LDAP =		No
WANT_LOCALBASE =	No
WANT_SMTP_AUTH =	No
SUBST_VARS +=		LOCALBASE WANT_LDAP WANT_LOCALBASE WANT_SMTP_AUTH

.if ${FLAVOR:Mldap}
WANT_LDAP =		Yes
WANT_LOCALBASE =	Yes
WANTLIB +=		ldap lber-2.4
LIB_DEPENDS +=		databases/openldap,-main
.endif

.if ${FLAVOR:Msasl}
WANT_SMTP_AUTH =	Yes
WANT_LOCALBASE =	Yes
WANTLIB +=		sasl2
LIB_DEPENDS +=		security/cyrus-sasl2
.endif

WRKDIST =		${WRKDIR}/${PKGNAME}

post-extract:
	cp ${FILESDIR}/cf/*.mc ${WRKSRC}/cf/cf
	${SUBST_CMD} -c ${FILESDIR}/site.OS.m4 \
	    ${WRKSRC}/devtools/Site/site.config.m4

opfiles =		op.ps op.txt
post-build:
.for file in ${opfiles}
	cd ${WRKSRC}/doc/op/ && \
	    ${SETENV} ${MAKE_ENV} GROFF_NO_SGR=1 make ${file}
.endfor

pre-fake:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/sendmail/

docdir =		${PREFIX}/share/doc/sendmail
post-install:
	find ${PREFIX}/bin/ -type l -print -execdir rm -f {} ';' | \
	    sed 's/^/rm -f /'
	mv ${PREFIX}/sbin/makemap ${PREFIX}/libexec/sendmail
.for file in sendmail-enable sendmail-disable
	@echo "Installing ${PREFIX}/sbin/${file}"
	@${SUBST_CMD} -c -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} \
	    ${FILESDIR}/${file} ${PREFIX}/sbin/${file}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sendmail/
.for file in access genericstable local-host-names mailertable relay-domains \
	    trusted-users virtusertable
	@echo "Installing ${PREFIX}/share/examples/sendmail/${file}"
	@${SUBST_CMD} -c -o ${SHAREOWN} -g ${SHAREGRP} \
	    ${FILESDIR}/${file} ${PREFIX}/share/examples/sendmail/${file}
.endfor
	${INSTALL_DATA_DIR} ${docdir}
.for file in CACerts FAQ KNOWNBUGS LICENSE README RELEASE_NOTES
	${INSTALL_DATA} ${WRKSRC}/${file} ${docdir}
.endfor
	@echo "Installing ${docdir}/mailer.conf.sendmail"
	@${SUBST_CMD} -c -o ${SHAREOWN} -g ${SHAREGRP} \
	    ${FILESDIR}/mailer.conf.sendmail ${docdir}/mailer.conf.sendmail
	${INSTALL_DATA_DIR} ${docdir}/op
.for file in op.me Makefile ${opfiles}
	${INSTALL_DATA} ${WRKSRC}/doc/op/${file} ${docdir}/op
.endfor
	${INSTALL_DATA_DIR} ${docdir}/libmilter
	${INSTALL_DATA} ${WRKSRC}/libmilter/docs/* ${docdir}/libmilter
	${INSTALL_DATA_DIR} ${PREFIX}/share/sendmail
	cd ${WRKSRC}/cf && pax -rw -s '/.*${PATCHORIG:S@.@\.@g}$$//' . \
	    ${PREFIX}/share/sendmail/
	cd ${WRKSRC} && pax -rw contrib ${PREFIX}/share/sendmail/
	${INSTALL_DATA} -m 644 ${FILESDIR}/cf-Makefile \
	    ${PREFIX}/share/sendmail/Makefile # XXX useful?
	${INSTALL_DATA} ${WRKSRC}/cf/cf/openbsd-localhost.cf \
	    ${PREFIX}/share/examples/sendmail/localhost.cf
	${INSTALL_DATA} ${WRKSRC}/cf/cf/openbsd-proto.cf \
	    ${PREFIX}/share/examples/sendmail/sendmail.cf
	${INSTALL_DATA} ${WRKSRC}/cf/cf/openbsd-submit.cf \
	    ${PREFIX}/share/examples/sendmail/submit.cf

.include <bsd.port.mk>

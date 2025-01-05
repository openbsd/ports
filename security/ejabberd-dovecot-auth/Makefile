COMMENT =		authenticate ejabberd against dovecot

V =			0.20120116
DISTNAME =		ejabberd-dovecot-auth-${V}

CATEGORIES =		security net

HOMEPAGE =		https://www.ejabberd.im/check_dovecot_perl/index.html

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# GPLv2+
#
# This script is based on check_mysql.pl
#   https://www.ejabberd.im/files/efiles/check_mysql.pl.txt
# which is based on check_pass_null.pl, a part of ejabberd:
#   https://github.com/processone/ejabberd/blob/23.04/examples/extauth/check_pass_null.pl
#
# Since ejabberd has always been distributed under GPLv2+, this script
# inherits the same license.
PERMIT_PACKAGE =	Yes

SITES =			https://www.ejabberd.im/files/contributions/

DISTFILES =		${DISTNAME}.pl{check_dovecot.pl.txt}

EXTRACT_ONLY =
EXTRACT_SUFX =

RUN_DEPENDS =		mail/dovecot \
			net/ejabberd \
			security/p5-Authen-SASL-Authd \
			sysutils/p5-Unix-Syslog

NO_BUILD =		Yes
NO_TEST =		Yes

do-extract:
	mkdir -p ${WRKSRC}
	cp ${FULLDISTDIR}/${DISTNAME}.pl ${WRKSRC}/check-dovecot

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ejabberd-dovecot-auth
	${INSTALL_DATA} ${FILESDIR}/dovecot-ejabberd-auth.conf \
			${PREFIX}/share/ejabberd-dovecot-auth
	${INSTALL_SCRIPT} ${WRKSRC}/check-dovecot \
			${PREFIX}/share/ejabberd-dovecot-auth

.include <bsd.port.mk>

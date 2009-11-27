# $OpenBSD: Makefile,v 1.18 2009/11/27 23:19:06 sthen Exp $

COMMENT=	virus/spam scanning framework

V=		4.79
Vs=		3
Vss=		${Vs}-1
CATEGORIES=	mail
MASTER_SITES=	http://mailscanner.info/files/4/tar/
DISTNAME=	mailscanner-${V}.${Vss}
PKGNAME=	mailscanner-${V}.${Vss:S/-/./}
DISTFILES=	MailScanner-install-${V}.${Vss}${EXTRACT_SUFX}
WRKDIST=	${WRKDIR}/MailScanner-${V}.${Vss}

HOMEPAGE=	http://www.mailscanner.info/

MAINTAINER=	Brad Smith <brad@comstyle.com>

RUN_DEPENDS+=	::databases/p5-DBI \
		::archivers/p5-Archive-Zip \
		::mail/p5-MIME-tools \
		::net/p5-Net-CIDR \
		::net/p5-Sys-Hostname-Long \
		::www/p5-HTML-Parser \
		::converters/p5-Convert-BinHex \
		::converters/p5-Convert-TNEF \
		::sysutils/p5-Filesys-Df \
		::mail/tnef \
		::archivers/unzip \
		::archivers/lha \
		::archivers/zoo \
		::net/wget \
		::devel/p5-OLE-Storage_Lite \
		::textproc/antiword

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes

post-extract:
	@cd ${WRKDIR} && ${TAR} xzf MailScanner-install-${V}.${Vs}/perl-tar/MailScanner-${V}.${Vss}${EXTRACT_SUFX} && \
		find ${WRKDIST} -type d | xargs chmod 755

do-install:	install_libexec install_etc install_share install_lib install_bin

BINS=	MailScanner Quick.Peek df2mbox d2mbox update_bad_phishing_emails
BINS+=	update_bad_phishing_sites update_phishing_sites check_mailscanner
BINS+=	clean.quarantine clean.SA.cache analyse_SpamAssassin_cache
BINS+=	mailscanner_create_locks processing_messages_alert upgrade_MailScanner_conf

_MS_sed_frag= _subst() { sed 's,%PREFIX%,${LOCALBASE},g;s,%SYSCONFDIR%,${SYSCONFDIR},g' \
		"$$2" > ${WRKDIST}/file; \
		case "$$1" in \
		script) ${INSTALL_SCRIPT} -m 755 ${WRKDIST}/file "$$3";; \
		data) ${INSTALL_DATA}	${WRKDIST}/file "$$3";; \
		*) echo "subst invalid 1st arg, given 1=$$1";exit 2;; \
		esac; }; _subst

INST_SCRIPT=	${_MS_sed_frag} script
INST_DATA=	${_MS_sed_frag} data

install_bin:
.for _f in ${BINS}
	@${INST_SCRIPT} ${WRKSRC}/bin/${_f} ${PREFIX}/bin/${_f}
.endfor

install_libexec:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/MailScanner
	@${INST_SCRIPT} ${WRKSRC}/bin/MailScanner ${PREFIX}/libexec/MailScanner/MailScanner
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/MailScanner/libexec
	@cd ${WRKSRC}/lib ; find * -name "*-wrapper" | while read f; do ${INST_SCRIPT} "$$f" ${PREFIX}/share/examples/MailScanner/libexec/"$${f}".sample; done
	@cd ${WRKSRC}/lib ; find * -name "*-autoupdate" | while read f; do ${INST_SCRIPT} "$$f" ${PREFIX}/share/examples/MailScanner/libexec/"$${f}".sample; done

ETC=	MailScanner.conf country.domains.conf filename.rules.conf
ETC+=   filetype.rules.conf phishing.bad.sites.conf phishing.safe.sites.conf
ETC+=	spam.assassin.prefs.conf spam.lists.conf virus.scanners.conf
ETC+=	archives.filename.rules.conf archives.filetype.rules.conf
ETC+=	conf.d/README mcp/mcp.spam.assassin.prefs.conf mcp/10_example.cf
ETC+=	mcp/v320.pre rules/bounce.rules rules/max.message.size.rules
ETC+=	rules/spam.whitelist.rules

install_etc:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/MailScanner
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/MailScanner/conf.d
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/MailScanner/mcp
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/MailScanner/rules
.for _f in ${ETC}
	@${INST_DATA} ${WRKSRC}/etc/${_f} ${PREFIX}/share/examples/MailScanner/${_f}
.endfor
	@${INST_DATA} ${WRKSRC}/etc/rules/EXAMPLES ${PREFIX}/share/examples/MailScanner/rules/EXAMPLES
	@${INST_DATA} ${WRKSRC}/etc/rules/README ${PREFIX}/share/examples/MailScanner/rules/README

install_share:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc
	${INSTALL_DATA_DIR} ${PREFIX}/share/MailScanner
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/MailScanner
	@${INST_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/MailScanner/README
	@${INST_DATA} ${FILESDIR}/README.OpenBSD.port ${PREFIX}/share/doc/MailScanner/README.OpenBSD.port
	@cd ${WRKSRC}/etc ; find reports -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}'/share/examples/MailScanner/{}' \;
	@cd ${WRKSRC}/etc ; find reports -type f ! -name "*.orig" | while read f; do ${INST_DATA} $$f ${PREFIX}/share/examples/MailScanner/$$f; done
	@cd ${PREFIX}/share/examples/MailScanner/reports ; find . -name "*.bak" -print0 | xargs -0 rm -f

install_lib:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/lib/MailScanner
	${INSTALL_PROGRAM_DIR} ${PREFIX}/lib/MailScanner/MailScanner 
	${INSTALL_PROGRAM_DIR} ${PREFIX}/lib/MailScanner/MailScanner/CustomFunctions
	@${INST_SCRIPT} ${WRKSRC}/lib/MailScanner.pm ${PREFIX}/lib/MailScanner/MailScanner.pm
	@cd ${WRKSRC}/lib/MailScanner ; find * -type f ! -name "*.orig" | while read f; do ${INST_SCRIPT} $$f ${PREFIX}/lib/MailScanner/MailScanner/$$f ; done

.include <bsd.port.mk>

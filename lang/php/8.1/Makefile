# $OpenBSD: Makefile,v 1.4 2022/01/05 15:33:52 kmos Exp $

BROKEN-sparc64=	No fibers support for sparc64

PHP_VERSION=	8.1.1
PHP_PKGSPEC=	>=8.1,<8.2

DEBUG_PACKAGES=		${BUILD_PACKAGES}

AUTOCONF_VERSION=	2.71

post-extract:
.for file in jump_riscv64_sysv_elf_gas.S make_riscv64_sysv_elf_gas.S
	if [ -f "${WRKSRC}/Zend/asm/${file}" ]; then \
	    echo "${WRKSRC}/Zend/asm/${file} already exists, not overwriting" >&2; \
	    exit 1; \
	else \
	    cp "${FILESDIR}/${file}" "${WRKSRC}/Zend/asm/${file}"; \
	fi
.endfor

.include <bsd.port.mk>

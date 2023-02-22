# Static linking with OpenSSL 1.1
.if ${MACHINE_ARCH} != aarch64 && ${MACHINE_ARCH} != amd64 && ${MACHINE_ARCH} != riscv64
USE_NOEXECONLY=		Yes
.endif

MODPY_EGG_VERSION =	2.0.0b4
REVISION =		4

COMPILER_LANGS =	c

# OpenSSL used for EVP_aes_256_ocb. It is linked statically to avoid conflicting
# with shared libcrypto from the base OS pulled in via dependencies.
BUILD_DEPENDS =		devel/py-pkgconfig${MODPY_FLAVOR} \
			lang/cython${MODPY_FLAVOR} \
			security/openssl/1.1
RUN_DEPENDS =		net/py-msgpack${MODPY_FLAVOR} \
			security/py-argon2-cffi${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR}

.include <bsd.port.mk>
